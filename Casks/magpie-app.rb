cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3684"
  sha256 arm:   "b320a18230c5169ee43e03ce92eade7f66b5598d72c7a8b2651cba97dca9a050",
         intel: "f0f9472fe8e1873674c4913dc993a22a00b47d734eed0747de5035ec977539fb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
