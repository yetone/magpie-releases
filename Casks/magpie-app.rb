cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2715"
  sha256 arm:   "42cc4562aa2f42d1e9b46563b77fff35d494fb3946574558b1ab803eaac078ea",
         intel: "cff2d202b78de5f3bc62d7abf3a8f35be2e14079ce25020cd2e5bdfdf61887b0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
