cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2334"
  sha256 arm:   "44074d635738b71926f20c43140f9344d75f081f54ae6b58f7d376b0fe956dba",
         intel: "4321fc98364715e98cdb663b5eb9d1367c691a81feb98aee8645600b26e5e3c9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
