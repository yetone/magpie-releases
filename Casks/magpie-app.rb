cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2512"
  sha256 arm:   "6555056c0199ed090b1f268eab55c8841de638210f0257757427db16c57051b1",
         intel: "8daab2b55b7be3ba70a4bcb818f951f20058348e9aa65e6f9dca679af2ced41b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
