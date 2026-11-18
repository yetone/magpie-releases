cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4414"
  sha256 arm:   "0b99a51496230fb786d4f6b84b96c4670862db616e4d48d3f4e159e34b2bf42a",
         intel: "44b2259ff9265058f7dc464d68964c7306148679a401315b8a956e1431c07f0b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
