cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3828"
  sha256 arm:   "6bf6807cdd0e776f732c9026a28ee9c55ef6cb6db616ee6f30efa44573c9460c",
         intel: "bef41ac7ab36f49463d79a899fec88de317563a56465f6d769373244f31907aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
