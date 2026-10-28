cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1931"
  sha256 arm:   "71de6017e7c30159c42cf657adfe1f57e2d579ae3e877f29d2a680a6b0e8c760",
         intel: "5863a4bb3f341a00202c14f4ba6cce4b8c0dcb34d8b6d9e284f912ea8248f7e6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
