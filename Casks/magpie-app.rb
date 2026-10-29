cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2050"
  sha256 arm:   "f3764d2bf278c55d253f422421d2c5b6df56f73cd24d86b5bd01aa6860e965b1",
         intel: "a168fb9c29624db0c2d98c507952816b793094623437d2a52f2698897e1d66f0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
