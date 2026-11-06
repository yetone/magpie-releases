cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3187"
  sha256 arm:   "413cb5647af94abed54ca5f30decb6508a919555ff9321c3d65db5616c241ae2",
         intel: "ce9299e25d10facae2f212b20b32ce2549d67a2331d1daabb6b9d1b1987a600b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
