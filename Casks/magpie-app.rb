cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1094"
  sha256 arm:   "f3804b2e0c9b07cb7f1880be752279db91b34804695ed692f0a7cffe7591bba4",
         intel: "b407098d61426289c5bac9aae04780dd5e5b5dbcece6bdd9c03cfe55b253d5dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
