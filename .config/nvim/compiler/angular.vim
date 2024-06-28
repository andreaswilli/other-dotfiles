if exists("current_compiler")
	finish
endif

let current_compiler = "angular"

set makeprg=ng\ build

CompilerSet errorformat=%E%.%#[%tRROR]%m
CompilerSet errorformat+=%E%.%#[%tARNING]%m
CompilerSet errorformat+=%C%f:%l:%c:
CompilerSet errorformat+=%C%.%#
CompilerSet errorformat+=%-G%.%#


" Example errors:
"
" ✘ [ERROR] NG5: Argument of type 'string | undefined' is not assignable to parameter of type 'string'.
"   Type 'undefined' is not assignable to type 'string'. [plugin angular-compiler]
"
"     apps/sme-app/src/app/your-need/your-need-tab/your-topics/options/options.component.html:93:11:
"       93 │         {{ getSelectedGroup()?.title | translate }}
"          ╵            ~~~~~~~~~~~~~~~~~~~~~~~~~
"
"
" ▲ [WARNING] NG8107: The left side of this optional chain operation does not include 'null' or 'undefined' in its type, therefore the '?.' operator can be replaced with the '.' operator. [plugin angular-compiler]
"
"     apps/sme-app/src/app/shared/dialog/templates/dialog-textarea-modal/dialog-textarea-modal.component.html:8:46:
"       8 │     [attr.maxlength]="data?.maxLength ? data?.maxLength : null"
"         ╵                                               ~~~~~~~~~
"
"   Error occurs in the template of component DialogTextareaModalComponent.
"
"     apps/sme-app/src/app/shared/dialog/templates/dialog-textarea-modal/dialog-textarea-modal.component.ts:15:15:
"       15 │   templateUrl: './dialog-textarea-modal.component.html',
"          ╵                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
