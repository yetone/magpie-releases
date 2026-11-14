cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4106"
  sha256 arm:   "ac6d451e464d31766d17a2acae78de7282d97f5414609c8edcca140949c8ae4e",
         intel: "421f8776e3eaff46179c20528eb6739a04efe85f149886ca5c488a7b67f864c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
