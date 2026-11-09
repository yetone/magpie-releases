cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3437"
  sha256 arm:   "6266479197ab6ca1f4e458855cfd2cea2c94f300d9916e4949477dae6d7cf2aa",
         intel: "bff115923d75a7c72900552be0ffa51ddb5e4c8e6b1f6f9e06bdefd6b39532fd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
