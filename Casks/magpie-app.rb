cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4624"
  sha256 arm:   "6ddb523cc5833cb4fe60c8a03fd565e12b4f42dcfdd51a3eb36e7696e320fb3d",
         intel: "7e45108f05bb6b75399c69d4e7ff2d0e1859574cf19a4975c2d0ae3a592a997d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
