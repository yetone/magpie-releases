cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3913"
  sha256 arm:   "2c12d29d92db3acdb8751b23fac97870115d11227d87c3addd6a54c778f58378",
         intel: "e32f78ff264fe8957375b2fb5275d4234f31013309fc6eee4d956008bb67b68b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
