cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4506"
  sha256 arm:   "e81db617ff188b557e9da67a910b6a166ed6edfbde55289b82fe562b98d55404",
         intel: "1ba9714b73dc755ad8716d03219b09517cdd3269cc8e7693b0ee853159b58e5e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
