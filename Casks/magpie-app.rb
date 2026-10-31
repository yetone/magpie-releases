cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2317"
  sha256 arm:   "0a42a1160b3cd8a3376bae6a77731212819aca75fa91d7719acc1f02a05f4d2b",
         intel: "9dad9059fe89a19f1c14dd37ba3986bef80fe9e574b573d089c5ec152bdb61d8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
