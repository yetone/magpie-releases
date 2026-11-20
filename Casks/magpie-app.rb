cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4598"
  sha256 arm:   "cf12f02802d0731ce1357ef1a17977c13701b4f1490011dc6799ce78a4268744",
         intel: "bfe445d7f5ad8029d448fb7fed2f52c7ab7fd17e4d599568d30e7d2acee0ecfe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
