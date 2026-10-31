cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2490"
  sha256 arm:   "cc13d40d1244848c619d69f213d1df7520463578646a37cdea917494e5c2bd82",
         intel: "b241210a585350d0311d67cd31a928feef1f35f77903e33b847cdfc69e1a4af5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
