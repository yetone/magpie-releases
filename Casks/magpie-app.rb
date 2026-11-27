cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4948"
  sha256 arm:   "2303c4dc36df96b43e1d8f2c4ae1c60e5cc3b6ee3bbbc9aed294cbb1c77efbeb",
         intel: "37738ba03ebc7a4b25ed641e2a83641a5a010214f8687a6e75e927c9d0dd86af"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
