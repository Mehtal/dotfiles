local ls = require("luasnip")
print("loading snippets ...")
ls.snippets = {
	typescriptreact = {
		ls.parser.parse_snippet("xedf", "export default function ${1:name}() {\n\treturn (\n\t\t${2:body}\n\t);}"),
	},
}
print("snippets loaded")
