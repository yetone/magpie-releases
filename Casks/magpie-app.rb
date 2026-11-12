cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3843"
  sha256 arm:   "912fa62f7829a2b31b2784b2647a680dcc1b29e071806ac0c4fcdf5b6d881ceb",
         intel: "30dd777a7ae22ece705ef90e1cd4e7614246f16c79438ebf51baf6206b27d58b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
