cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4579"
  sha256 arm:   "aa791fa419ecebdbc0125609492fc27316c98fb2b69b4df1cbdb6e5681390368",
         intel: "2529a317f60f303eab693178647de9c5f8f1ddb7cfdab83272be1b7dcc2525ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
