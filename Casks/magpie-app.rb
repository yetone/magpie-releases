cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1047"
  sha256 arm:   "fc93383aa223babe166b66608776684e8983b2038b8101163059a0e23a9b3a4d",
         intel: "81f5d6e743babea0cc9a811488c84408117077d8a7bbea8eb283d30fee452847"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
