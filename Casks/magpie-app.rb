cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3010"
  sha256 arm:   "3bb29265abf8d6cb6d7eff63862472fcb22027e87e11a730449ec35a1da1bc0e",
         intel: "708e895918102decc50e8dbe98002680bf844b3836ed068a475ea9295095e8ae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
