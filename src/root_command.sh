project_name=${args[project_name]}

init() {
  update_main
  init_submoules
  create_header_file
  update_makefile
}

update_makefile() {
  old_project_name="project"
  new_project_name=$project_name
  sed -i '' "s/^NAME = $old_project_name/NAME = $new_project_name/g" Makefile
}

init_submoules() {
	git submodule add git@github.com:nkeneng/Libft.git libft
}

create_header_file(){
    project_name_upper=$(echo "$project_name" | tr '[:lower:]' '[:upper:]')

    echo "#ifndef ${project_name_upper}_H" > "${project_name}.h"
    echo "# define ${project_name_upper}_H" >> "${project_name}.h"
    echo "" >> "${project_name}.h"

    echo '# include "libft/ft_printf/ft_printf.h"' >> "${project_name}.h"
    echo '# include "libft/get_next_line/get_next_line.h"' >> "${project_name}.h"
    echo '# include "libft/lib_ft/libft.h"' >> "${project_name}.h"

    echo "# include <stdio.h>" >> "${project_name}.h"
    echo "# include <stdlib.h>" >> "${project_name}.h"

    echo "" >> "${project_name}.h"
    echo "#endif" >> "${project_name}.h"
}

update_main() {
  old_filename="project.h"
  new_filename="$project_name.h" # Replace this with your new filename
  sed -i '' "s/#include \"$old_filename\"/#include \"$new_filename\"/g" main.c
}

inspect_args
init
