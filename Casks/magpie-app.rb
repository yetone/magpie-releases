cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1079"
  sha256 arm:   "f1c3fa655540b6096e66441f43fbd17ae61d39be016ec8fe857d6d960d1951d3",
         intel: "ee0e7c602aeda056a7363ce3c1b661901783f56145435f6b93e3e1b967b73713"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
