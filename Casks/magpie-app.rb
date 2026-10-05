cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1048"
  sha256 arm:   "0f1aa446b72a46a5c07f32f6eb3b5f0ad42398471c0749333373235a76f50959",
         intel: "279acad6a93deee91f91a6678b4b83fafa04d14c62e89574b496b9970374b9ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
