cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2451"
  sha256 arm:   "ffd4cfef4a4bc59aef1111c072d45af93f313b06bf7e0f2ace16010a5bc19144",
         intel: "e2a143ba48a66cb958cb7c3967b852f20190cdc9401a639b50816c29c09a7de4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
