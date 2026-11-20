cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4617"
  sha256 arm:   "c1f97cc285b752a0b904ca38986f1c3dd2b767aef87eb480301bd3caae017f9e",
         intel: "cd9868d54718f32d1e210640dc442ec2aae22d1e277340f48511fe8ada1b04b0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
