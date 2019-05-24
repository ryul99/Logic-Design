
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name testcode -dir "/csehome/cmchoi9901/Logic Design/testcode/planAhead_run_4" -part xc3s50antqg144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/csehome/cmchoi9901/Logic Design/testcode/testm.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/csehome/cmchoi9901/Logic Design/testcode} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "testm.ucf" [current_fileset -constrset]
add_files [list {testm.ucf}] -fileset [get_property constrset [current_run]]
link_design
