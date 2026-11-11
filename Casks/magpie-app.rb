cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3705"
  sha256 arm:   "a3695a2ff3c473333a1b08de39e047cc9bd31bbc608ebfffd39d8da7f4ecf166",
         intel: "67591e4ac7eb1d5f44804435255f7cd4ce5df7ec372bd0de45f59ad2f4af8d10"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
