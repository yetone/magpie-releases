cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2585"
  sha256 arm:   "bdb4220a9547599d4038a71aa33e4073d5e61a5ee92271c09754137a4bfd3932",
         intel: "1b3f7ea14103b6c13d52a4fa9eb6654bf4a042da5af867161f5770a152f72f06"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
