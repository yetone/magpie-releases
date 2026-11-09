cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3417"
  sha256 arm:   "32629dfde4278bd16b0aaf41c2b3c3ac6130bf075e53d2c2d80139c8fe465b62",
         intel: "7a097c114766f30b8d2fb47374f0f0df061285d188543109137018639c5d14e8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
