cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5046"
  sha256 arm:   "41c06bb0e292b02bcc601fe80bd862eea263507c4c08876756fd1873b00d559d",
         intel: "a5d0d08f03ff9a6e47970e084b93a4c83bc7076d0a03f02dffbd881f9fa6bd3d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
