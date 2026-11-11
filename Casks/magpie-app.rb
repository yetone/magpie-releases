cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3760"
  sha256 arm:   "ad3a11d2e946fac5a7672cbb15ee261b7318dc1a01984e5f3e3371f8347849ab",
         intel: "70def5f2c3199beff18d455d7a01ffbd1a0472d231a278144feac912dfad3d82"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
