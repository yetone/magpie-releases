cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3534"
  sha256 arm:   "6d9054a703856c22c474d8ae4df8b903045810fc90136484fb2805625ec2c3de",
         intel: "aca2e0763a64775ec411f4d8381bea5808df0611aa86b69db0a23f1abf151990"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
