cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3478"
  sha256 arm:   "c7aac2679959df20c2435aec65dd34a74c4b62a12d7fcec9212d84444a57429b",
         intel: "fb14fcb2dd17ee4df62282b2dd77defbc1496ab07148e10c3d490be84243cd97"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
