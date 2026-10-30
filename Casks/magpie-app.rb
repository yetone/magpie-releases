cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2282"
  sha256 arm:   "0029747a3520005d09877bcac4fffe344a2a417c88ef6a0cbd18565567d670ff",
         intel: "15ad64b71efd0fb70da95ec67cf3719a44a83087920a4bd27589914a73ba9aab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
