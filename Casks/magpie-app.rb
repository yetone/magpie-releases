cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2328"
  sha256 arm:   "f3cf3a15d4c0fea340da8a5e5157021937315a0991000d3edc4f54e85ceac60e",
         intel: "69397c121551c478dc0e618981f2ad2f8353241506c39560fbb83813b8676461"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
