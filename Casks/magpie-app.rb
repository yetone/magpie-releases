cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.923"
  sha256 arm:   "4806b48e74fa0f9cb0f53e2169516d28fd66df36072e3b53032820de461b39cb",
         intel: "ac3429bf7b03fa837b8c335c79eaea98c14972dcadbf734b35fab82c039a8064"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
