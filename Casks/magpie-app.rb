cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1124"
  sha256 arm:   "e7f45bf9028aba95cd82dc88000e3af6d443d4f0ec6ce9cae0dab1903857ec55",
         intel: "b6c777d11ef60edf45a985ddb073b73323ae1984660a3ccd7bc0828047725305"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
