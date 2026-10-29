cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2005"
  sha256 arm:   "b936e4884dec395b85a3a6bebedd735bb82182458cc46b6f5124141a444362a3",
         intel: "2fbb8ae9a085c2cbbd6a742ac806a59a01d7718f8c1cfbb082f2e2ef6ae4897f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
