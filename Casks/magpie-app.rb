cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1066"
  sha256 arm:   "68dcff3550270894b73ae5937700f5efa0d686a10e870b681fec430d274da009",
         intel: "5ee655c363674ac93aef23285fb0910b4f957e0cc9eb9a9a4ba5cd4497ce5cac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
