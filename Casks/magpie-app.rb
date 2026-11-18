cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4451"
  sha256 arm:   "f99c5d414bc6978cd39db4d68aca49014be5b8092293cf3ebd58ff11bf517915",
         intel: "946085af18872a3fb1181c7a77e628e12116b5f3b2f24e58eae80b2bb68622fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
