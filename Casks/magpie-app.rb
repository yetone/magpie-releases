cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3409"
  sha256 arm:   "40b2663b1824d44bf3261ccea1cf905fa1d08b238b2903aa1eb48851b031ce9e",
         intel: "8cf0bb41376a123eb08a05a2a27f0fb531cd07d97f54d00fadd0bc800e17f3b3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
