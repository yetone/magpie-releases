cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3455"
  sha256 arm:   "975f18bb5a5fb6cb87c6b1f18fe656b17f24a763059b3444c23c1d3fe2d9075c",
         intel: "a7589f51770fc51a797a5706f7768fc1b2ee498f9061e1bb11876d2c830fdfb9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
