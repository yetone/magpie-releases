cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3101"
  sha256 arm:   "b8da5dd8c44a88c805bcad7707d5cf41533a2e5d01ae654efcec1c334c03fc8f",
         intel: "9046ca491a78e3482b02f6b8ff358034a37502ba663c94472163d83f34f97aaa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
