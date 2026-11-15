cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4251"
  sha256 arm:   "28bc80f4944bc43cb5ce89089a43534ad7394da3319edde675fac25d6ebc0c99",
         intel: "be8eb0b408845bbfd371389040eab804f1d388fcf383b777334896f38d4ef655"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
