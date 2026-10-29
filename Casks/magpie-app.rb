cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1987"
  sha256 arm:   "50f0162b7f715fff6f3f9c3793f290d052c50b7bdb16090544e22b21349feeb0",
         intel: "b2ece1efe2782d44c57e79003eae69e6b8bfe2d01adb46a722f534cac0ec54ff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
