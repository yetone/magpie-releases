cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2241"
  sha256 arm:   "11d4710e1b9e39561a8af24e74f0d9cd9db0afdffce0da82d60bb97ab4c7ebb6",
         intel: "dd84a968f297bdaa9b88a0247d00ef8fbbf0790296c47483f68413fc6c497de9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
