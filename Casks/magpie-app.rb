cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3237"
  sha256 arm:   "67a6cad16892a9551771a5eb79389c34cc156a4e36e321747d9f6bcefeefc2a9",
         intel: "301d183f63fdbeaf2b501c77970501191b43f38e93c8d840c98792c62aff442b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
