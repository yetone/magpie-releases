cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4599"
  sha256 arm:   "9d745e80bca9231c8bf2788a8c200a4f0c208aee33e9f005540f681746648412",
         intel: "a77b5567eb3d4c3776863170110c3010ba5a1c5f8b7e265792c8a80c18c32b5a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
