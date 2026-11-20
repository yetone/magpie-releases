cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4576"
  sha256 arm:   "0fa1093684f273f7f27428a1095a53a50b29557062ed2f70caa36a3ca85385a2",
         intel: "5def6d49bea5ecd2eff45a41920524793d94dfbd52982f837dbbc95b9b0d8a42"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
