cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2996"
  sha256 arm:   "3e810b2e3eea88347e22f36768b34a0d24b85cfc546b6d40413faf23f972318a",
         intel: "657f346da596f13ebf6cdfd68bd8cf394d947834cb322ed7370599c6a95e3da4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
