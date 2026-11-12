cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3824"
  sha256 arm:   "f716ba2e7fa46fb85178a7893a5e02f23cffc67b39bd3f479bde760319bac438",
         intel: "2118512dfc93c24f0ede215998969569398d85ab680ed7d7c1a4f2b34786188b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
