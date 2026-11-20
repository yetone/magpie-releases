cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4619"
  sha256 arm:   "57e2e19323310ecb313b9c2e83d2fd2a1e91510bba5833590abb1905b1744533",
         intel: "f30bf6a760897643beb3f6a74cf577fd8c5367e55d5538f950e021e76d5628f9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
