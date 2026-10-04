cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.889"
  sha256 arm:   "9e92807179502073fa52e4e08186103cbaae8ccbb3170faf8f145fab368ebe60",
         intel: "ba6265adc3c6743a2a2b27dff1edf8c6bcb4f5e4d13d723a574657adb8ecd846"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
