cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4312"
  sha256 arm:   "3a6856ecbd460d14b8ebed5ac2e488f2297d9be5fdf175ca289575ef718db73e",
         intel: "1f35ec5d06539700415f6fd021f4bb878882099b4044c7349f7e6c3fc4882528"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
