cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3782"
  sha256 arm:   "0d1d949e7f6510bb9aeaf795b9532144fe8cc048bce268442dcad60563f0ebeb",
         intel: "b0ec7d7d421eddfb5936e445814c4f0335b91c860e3e019d67352edaf3ee7680"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
